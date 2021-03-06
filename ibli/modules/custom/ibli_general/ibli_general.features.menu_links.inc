<?php
/**
 * @file
 * ibli_general.features.menu_links.inc
 */

/**
 * Implements hook_menu_default_menu_links().
 */
function ibli_general_menu_default_menu_links() {
  $menu_links = array();

  // Exported menu link: menu-ibli-main-menu_about-us:<nolink>
  $menu_links['menu-ibli-main-menu_about-us:<nolink>'] = array(
    'menu_name' => 'menu-ibli-main-menu',
    'link_path' => '<nolink>',
    'router_path' => '<nolink>',
    'link_title' => 'About Us',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'identifier' => 'menu-ibli-main-menu_about-us:<nolink>',
    ),
    'module' => 'menu',
    'hidden' => 0,
    'external' => 0,
    'has_children' => 1,
    'expanded' => 1,
    'weight' => -47,
    'customized' => 1,
  );
  // Exported menu link: menu-ibli-main-menu_blog:http://livestockinsurance.wordpress.com
  $menu_links['menu-ibli-main-menu_blog:http://livestockinsurance.wordpress.com'] = array(
    'menu_name' => 'menu-ibli-main-menu',
    'link_path' => 'http://livestockinsurance.wordpress.com',
    'router_path' => '',
    'link_title' => 'Blog',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'identifier' => 'menu-ibli-main-menu_blog:http://livestockinsurance.wordpress.com',
    ),
    'module' => 'menu',
    'hidden' => 0,
    'external' => 1,
    'has_children' => 0,
    'expanded' => 0,
    'weight' => -50,
    'customized' => 1,
    'parent_identifier' => 'menu-ibli-main-menu_information:<nolink>',
  );
  // Exported menu link: menu-ibli-main-menu_contact-us:contact-us
  $menu_links['menu-ibli-main-menu_contact-us:contact-us'] = array(
    'menu_name' => 'menu-ibli-main-menu',
    'link_path' => 'contact-us',
    'router_path' => 'contact-us',
    'link_title' => 'Contact Us',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'identifier' => 'menu-ibli-main-menu_contact-us:contact-us',
    ),
    'module' => 'menu',
    'hidden' => 0,
    'external' => 0,
    'has_children' => 0,
    'expanded' => 0,
    'weight' => -48,
    'customized' => 1,
    'parent_identifier' => 'menu-ibli-main-menu_about-us:<nolink>',
  );
  // Exported menu link: menu-ibli-main-menu_gallery:https://www.flickr.com/photos/125283442@N04/
  $menu_links['menu-ibli-main-menu_gallery:https://www.flickr.com/photos/125283442@N04/'] = array(
    'menu_name' => 'menu-ibli-main-menu',
    'link_path' => 'https://www.flickr.com/photos/125283442@N04/',
    'router_path' => '',
    'link_title' => 'Gallery',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'identifier' => 'menu-ibli-main-menu_gallery:https://www.flickr.com/photos/125283442@N04/',
    ),
    'module' => 'menu',
    'hidden' => 0,
    'external' => 1,
    'has_children' => 0,
    'expanded' => 0,
    'weight' => -49,
    'customized' => 1,
    'parent_identifier' => 'menu-ibli-main-menu_about-us:<nolink>',
  );
  // Exported menu link: menu-ibli-main-menu_get-ibli:node/31
  $menu_links['menu-ibli-main-menu_get-ibli:node/31'] = array(
    'menu_name' => 'menu-ibli-main-menu',
    'link_path' => 'node/31',
    'router_path' => 'node/%',
    'link_title' => 'Get IBLI',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'identifier' => 'menu-ibli-main-menu_get-ibli:node/31',
    ),
    'module' => 'menu',
    'hidden' => 0,
    'external' => 0,
    'has_children' => 0,
    'expanded' => 0,
    'weight' => -49,
    'customized' => 1,
  );
  // Exported menu link: menu-ibli-main-menu_information:<nolink>
  $menu_links['menu-ibli-main-menu_information:<nolink>'] = array(
    'menu_name' => 'menu-ibli-main-menu',
    'link_path' => '<nolink>',
    'router_path' => '<nolink>',
    'link_title' => 'Information',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'identifier' => 'menu-ibli-main-menu_information:<nolink>',
    ),
    'module' => 'menu',
    'hidden' => 0,
    'external' => 0,
    'has_children' => 1,
    'expanded' => 1,
    'weight' => -48,
    'customized' => 1,
  );
  // Exported menu link: menu-ibli-main-menu_partners:partners
  $menu_links['menu-ibli-main-menu_partners:partners'] = array(
    'menu_name' => 'menu-ibli-main-menu',
    'link_path' => 'partners',
    'router_path' => 'partners',
    'link_title' => 'Partners',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'identifier' => 'menu-ibli-main-menu_partners:partners',
    ),
    'module' => 'menu',
    'hidden' => 0,
    'external' => 0,
    'has_children' => 0,
    'expanded' => 0,
    'weight' => -50,
    'customized' => 1,
    'parent_identifier' => 'menu-ibli-main-menu_about-us:<nolink>',
  );
  // Exported menu link: menu-ibli-main-menu_past-index-maps:pim
  $menu_links['menu-ibli-main-menu_past-index-maps:pim'] = array(
    'menu_name' => 'menu-ibli-main-menu',
    'link_path' => 'pim',
    'router_path' => 'pim',
    'link_title' => 'Past Index Maps',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'identifier' => 'menu-ibli-main-menu_past-index-maps:pim',
    ),
    'module' => 'menu',
    'hidden' => 0,
    'external' => 0,
    'has_children' => 0,
    'expanded' => 0,
    'weight' => -49,
    'customized' => 1,
    'parent_identifier' => 'menu-ibli-main-menu_information:<nolink>',
  );
  // Exported menu link: menu-ibli-main-menu_premiums-table:premium-rates
  $menu_links['menu-ibli-main-menu_premiums-table:premium-rates'] = array(
    'menu_name' => 'menu-ibli-main-menu',
    'link_path' => 'premium-rates',
    'router_path' => 'premium-rates',
    'link_title' => 'Premiums Table',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'identifier' => 'menu-ibli-main-menu_premiums-table:premium-rates',
    ),
    'module' => 'menu',
    'hidden' => 0,
    'external' => 0,
    'has_children' => 0,
    'expanded' => 0,
    'weight' => -48,
    'customized' => 1,
    'parent_identifier' => 'menu-ibli-main-menu_information:<nolink>',
  );
  // Exported menu link: menu-ibli-main-menu_what-is-ibli:node/16
  $menu_links['menu-ibli-main-menu_what-is-ibli:node/16'] = array(
    'menu_name' => 'menu-ibli-main-menu',
    'link_path' => 'node/16',
    'router_path' => 'node/%',
    'link_title' => 'What is IBLI?',
    'options' => array(
      'identifier' => 'menu-ibli-main-menu_what-is-ibli:node/16',
      'attributes' => array(
        'title' => '',
      ),
    ),
    'module' => 'menu',
    'hidden' => 0,
    'external' => 0,
    'has_children' => 0,
    'expanded' => 0,
    'weight' => -50,
    'customized' => 1,
  );
  // Translatables
  // Included for use with string extractors like potx.
  t('About Us');
  t('Blog');
  t('Contact Us');
  t('Gallery');
  t('Get IBLI');
  t('Information');
  t('Partners');
  t('Past Index Maps');
  t('Premiums Table');
  t('What is IBLI?');


  return $menu_links;
}
