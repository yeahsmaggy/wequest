
<div class="projectnotifymessage">you should check out these projects, they need your skills!<ul>
   <?php
   foreach ($nodestoshow as $key => $value) {
    ?><li class="notemessage"><a href="/node/<?php print $value->nid?>"> <?php $value->title ?> </a></li>
  <?php }?>
 </ul></div>