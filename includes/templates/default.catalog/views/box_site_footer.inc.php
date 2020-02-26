<footer id="footer">

  <div class="row" style="background-color:#000; color:#FFF;">
    <div class="hidden-xs col-sm-fourths col-md-fifths categories">
      <h3 class="title" style="color:#FFF;"><?php echo language::translate('title_categories', 'Categories'); ?></h3>
      <ul class="list-unstyled" style="color:#FFF;">
        <?php foreach ($categories as $category) echo '<li style="color:#FFF;"><a style="color:#FFF;" href="'. htmlspecialchars($category['link']) .'">'. $category['name'] .'</a></li>' . PHP_EOL; ?>
      </ul>
    </div>

    <?php if ($manufacturers) { ?>
    <div class="hidden-xs hidden-sm col-md-fifths manufacturers">
      <h3 class="title" style="color:#FFF;"><?php echo language::translate('title_manufacturers', 'Manufacturers'); ?></h3>
      <ul class="list-unstyled" style="color:#FFF;">
      <?php foreach ($manufacturers as $manufacturer) echo '<li style="color:#FFF;"><a style="color:#FFF;" href="'. htmlspecialchars($manufacturer['link']) .'">'. $manufacturer['name'] .'</a></li>' . PHP_EOL; ?>
      </ul>
    </div>
    <?php } ?>

    <div class="col-xs-halfs col-sm-fourths col-md-fifths account">
      <h3 class="title" style="color:#FFF;"><?php echo language::translate('title_account', 'Account'); ?></h3>
      <ul class="list-unstyled" style="color:#FFF;">
        <li style="color:#FFF;"><a style="color:#FFF;" href="<?php echo document::ilink('customer_service'); ?>"><?php echo language::translate('title_customer_service', 'Customer Service'); ?></a></li>
        <li style="color:#FFF;"><a style="color:#FFF;" href="<?php echo document::href_ilink('regional_settings'); ?>"><?php echo language::translate('title_regional_settings', 'Regional Settings'); ?></a></li>
        <?php if (empty(customer::$data['id'])) { ?>
        <li style="color:#FFF;"><a style="color:#FFF;" href="<?php echo document::href_ilink('create_account'); ?>"><?php echo language::translate('title_create_account', 'Create Account'); ?></a></li>
        <li style="color:#FFF;"><a style="color:#FFF;" href="<?php echo document::href_ilink('login'); ?>"><?php echo language::translate('title_login', 'Login'); ?></a></li>
        <?php } else { ?>
        <li style="color:#FFF;"><a style="color:#FFF;" href="<?php echo document::href_ilink('order_history'); ?>"><?php echo language::translate('title_order_history', 'Order History'); ?></a></li>
        <li style="color:#FFF;"><a style="color:#FFF;" href="<?php echo document::href_ilink('edit_account'); ?>"><?php echo language::translate('title_edit_account', 'Edit Account'); ?></a></li>
        <li style="color:#FFF;"><a style="color:#FFF;" href="<?php echo document::href_ilink('logout'); ?>"><?php echo language::translate('title_logout', 'Logout'); ?></a></li>
        <?php } ?>
      </ul>
    </div>

    <div class="col-xs-halfs col-sm-fourths col-md-fifths information">
      <h3 class="title" style="color:#FFF;"><?php echo language::translate('title_information', 'Information'); ?></h3>
      <ul class="list-unstyled" style="color:#FFF;">
        <?php foreach ($pages as $page) echo '<li style="color:#FFF;"><a style="color:#FFF;" href="'. htmlspecialchars($page['link']) .'">'. $page['title'] .'</a></li>' . PHP_EOL; ?>
      </ul>
    </div>

    <div class="hidden-xs col-sm-fourths col-md-fifths contact">
      <h3 class="title" style="color:#FFF;"><?php echo language::translate('title_contact', 'Contact'); ?></h3>

      <p style="color:#FFF;"><?php echo nl2br(settings::get('store_postal_address')); ?></p>

      <?php if (settings::get('store_phone')) { ?>
      <p style="color:#FFF;"><?php echo functions::draw_fonticon('fa-phone'); ?> <a style="color:#FFF;" href="tel:<?php echo settings::get('store_phone'); ?>"><?php echo settings::get('store_phone'); ?></a><p>
      <?php } ?>

      <p style="color:#FFF;"><?php echo functions::draw_fonticon('fa-envelope'); ?> <a style="color:#FFF;" href="mailto:<?php echo settings::get('store_email'); ?>"><?php echo settings::get('store_email'); ?></a></p>
    </div>
  </div>
</footer>

<div id="copyright" class="twelve-eighty">
  <!-- LiteCart is provided free under license CC BY-ND 4.0 - https://creativecommons.org/licenses/by-nd/4.0/. Removing the link back to litecart.net without permission is a violation - https://www.litecart.net/addons/172/removal-of-attribution-link -->
  <div class="notice">Copyright &copy; <?php echo date('Y'); ?> <?php echo settings::get('store_name'); ?>. All rights reserved &middot; Powered by <a style="color:#FFF;" href="http://zigisa.com/" target="_blank" title="Zigisa Consultancy Services ">Zigisa Consultancy Services Private Limited</a></div>
</div>