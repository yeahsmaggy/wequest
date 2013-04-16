<?php
/**
 * @file
 * Template for a geo brick layout
 *  *
 * Variables:
 * - $id: An optional CSS id to use for the layout.
 * - $content: An array of content, each item in the array is keyed to one
 *   panel of the layout. This layout supports the following sections:
 *   $content['middle']: The only panel in the layout.
 */
?>
<div class="geo-brick-layout clearfix" <?php if (!empty($css_id)) { print "id=\"$css_id\""; } ?>>

  <?php print $content['header']; ?>
	
	<?php if ($content['section_upper']): ?>
		<div class="l-section-upper">
			<?php print $content['section_upper']; ?>
		</div>
	<?php endif; ?>
	
	<?php if ($content['section_lower']): ?>
		<div class="l-section-lower">
			<?php print $content['section_lower']; ?>
			
		</div>
	<?php endif; ?>
	
	<?php if ($content['footer']): ?>
		<div class="l-content-footer">
			<?php print $content['footer']; ?>
		</div>
	<?php endif; ?>
	
</div>
