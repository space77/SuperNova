<?php
/*
 * common.php
 *
 * Common init file
 *
 * @version 1.1 Security checks by Gorlum for http://supernova.ws
 */

require_once('includes/init.php');

$user = sn_autologin(!$allow_anonymous);

if($config->game_disable)
{
  if ($user['authlevel'] < 1)
  {
    message ( sys_bbcodeParse($config->game_disable_reason), $config->game_name );
    die();
  }
  else
  {
    $disable_reason = sys_bbcodeParse($config->game_disable_reason);
    print("<div align=center style='font-size: 24; font-weight: bold; color:red;'>{$disable_reason}</div><br>");
  }
}

if(!$user && !$allow_anonymous)
{
  header('Location: login.php');
}

FlyingFleetHandler();

if ($user && is_array($user) && isset($user['id']) && !empty($user['id']))
{
  if ( defined('IN_ADMIN') )
  {
    $UserSkin  = $user['dpath'];
    $local     = stristr ( $UserSkin, "http:");
    if ($local === false)
    {
      if (!$user['dpath'])
      {
        $dpath     = "../". DEFAULT_SKINPATH  ;
      }
      else
      {
        $dpath     = "../". $user["dpath"];
      }
    }
    else
    {
      $dpath     = $UserSkin;
    }
  }
  else
  {
    $dpath     = (!$user["dpath"]) ? DEFAULT_SKINPATH : $user["dpath"];
  }

  $planet_id = SetSelectedPlanet($user);
  $global_data = sys_get_updated($user, $planet_id, $time_now);

  if(!$global_data)
  {
    $debug->error("User ID {$user['id']} has no current planet and no homeworld", 'User record error', 502);
  }

  $planetrow = $global_data['planet'];
  if(!$planetrow || !isset($planetrow['id']))
  {
    header('Location: login.php');
  }

  $que = $global_data['que'];

  CheckPlanetUsedFields($planetrow);

  if(!$skip_ban_check && !(IN_ADMIN === true))
  {
    sys_user_vacation($user);
  }
}

?>
