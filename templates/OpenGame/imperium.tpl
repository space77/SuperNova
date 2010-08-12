<br>
<table border="0" cellpadding="0" cellspacing="1" width="750" align=center><tbody>
  <tr height="20" valign="left">
    <td class="c" colspan="{mount}">{L_imp_overview}</td>
  </tr>
  <tr>
    <th>&nbsp;</th>
    <!-- BEGIN planet -->
    <th class="c"><a href="overview.php?cp={planets.ID}&re=0"><img src="{dpath}planeten/small/s_{planet.IMAGE}.jpg" border="0" height="75" width="75"></a></th>
    <!-- END planet -->
  </tr>
  <tr>
    <th>{name}</th>
    <!-- BEGIN planet -->
    <th class="c" width="75"><a href="overview.php?cp={planets.ID}&re=0">{planet.NAME}</a></th>
    <!-- END planet -->
  </tr>
  <tr>
    <th>{coordinates}</th>
    <!-- BEGIN planet -->
    <th class="c"><a href="overview.php?cp={planets.ID}&re=0">{planet.COORDINATES}</a></th>
    <!-- END planet -->
  </tr>
  <tr>
    <th>{fields}</th>
    <!-- BEGIN planet -->
    <th class="c"><font<!-- IF planet.FIELDS_CUR >= planet.FIELDS_MAX --> color="red"<!-- ENDIF -->>{planet.FIELDS_CUR}/{planet.FIELDS_MAX}</font></th>
    <!-- END planet -->
  </tr>

  <td class="c" colspan="{mount}" align="left">{L_resources}</td>
  <tr>
    <th>{L_sys_metal}<br>{L_imp_production}</th>
    <!-- BEGIN planet -->
    <th class="c">
      <a href="resources.php?cp={planet.ID}&re=0&planettype={planet.TYPE}">{planet.METAL_CUR}<br>{planet.METAL_PROD}</a>
    </th>
    <!-- END planet -->
  </tr>
  <tr>
    <th>{L_sys_crystal}<br>{L_imp_production}</th>
    <!-- BEGIN planet -->
    <th class="c">
      <a href="resources.php?cp={planet.ID}&re=0&planettype={planet.TYPE}">{planet.CRYSTAL_CUR}<br>{planet.CRYSTAL_PROD}</a>
    </th>
    <!-- END planet -->
  </tr>
  <tr>
    <th>{L_sys_deuterium}<br>{L_imp_production}</th>
    <!-- BEGIN planet -->
    <th class="c">
      <a href="resources.php?cp={planet.ID}&re=0&planettype={planet.TYPE}">{planet.DEUTERIUM_CUR}<br>{planet.DEUTERIUM_PROD}</a>
    </th>
    <!-- END planet -->
  </tr>
  <tr>
    <th>{L_sys_energy}<br>{L_imp_production}</th>
    <!-- BEGIN planet --><th class="c"><a href="resources.php?cp={planet.ID}&re=0&planettype={planet.TYPE}">{planet.ENERGY_CUR}<br>{planet.ENERGY_MAX}</a></th><!-- END planet -->
  </tr>

   <!-- BEGIN prods -->
   <tr>
     <!-- IF prods.MODE -->
     <th>{prods.NAME}</th>
     <!-- ELSE -->
     <td class="c" colspan="{mount}">{prods.NAME}</td>
     <!-- ENDIF -->
     
     <!-- BEGIN planet -->
     <th>
       <!-- IF prods.planet.LEVEL -->
       <a href="buildings.php?mode={prods.MODE}&cp={prods.planet.ID}&re=0&planettype={prods.planet.TYPE}">{prods.planet.LEVEL}</a>
       <!-- ELSE -->-<!-- ENDIF -->
     </th>
     <!-- END planet -->
   </tr>
   <!-- END prods -->
</tbody></table>
<script type="text/javascript" src="scripts/wz_tooltip.js"></script>