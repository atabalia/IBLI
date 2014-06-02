
<div class="panel-display panel-ibli-homepage clearfix" <?php if (!empty($css_id)) { print 'id="' . $css_id . '"'; } ?>>

  <div class="row">

    <div class="panel-panel panel-col-left col-xs-8 col-sm-8 col-md-8 col-lg-8">
      <div class="block-header">
        <h2>
          <span class="title">Welcome to IBLI</span><span class="decoration"></span><span class="decoration"></span><span class="decoration"></span>
        </h2>
      </div>
      <?php print $content['left']; ?>
    </div>

    <div class="panel-panel panel-col-right col-xs-4 col-sm-4 col-md-4 col-lg-4">
      <?php print $content['right']; ?>


      <!---------------------------------------------------------------------------------->
      <div class="block-header">
        <h2>
          <span class="title">Last Updates</span><span class="decoration"></span><span class="decoration"></span><span class="decoration"></span>
        </h2>
      </div>
      <ul class="nav nav-tabs">
        <li class="active"><a href="#blog" data-toggle="tab">Blog</a></li>
        <li><a href="#comments" data-toggle="tab">Comments</a></li>
        <li><a href="#events" data-toggle="tab">Events</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="blog">
          <div class="media">
            <a class="pull-left" href="#">
              <img class="media-object" src="<?php print $images_path; ?>/blog-1.jpg" alt="Blog Message">
            </a>
            <div class="media-body">
              <h4 class="media-heading"><a href="#">Story title</a></h4>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id ipsum varius, tincidunt odio nec, placerat enim.
            </div>
          </div>
          <div class="media">
            <a class="pull-left" href="#">
              <img class="media-object" src="<?php print $images_path; ?>/blog-2.jpg" alt="Blog Message">
            </a>
            <div class="media-body">
              <h4 class="media-heading"><a href="#">Story title</a></h4>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id ipsum varius, tincidunt odio nec, placerat enim.
            </div>
          </div>
          <div class="media">
            <a class="pull-left" href="#">
              <img class="media-object" src="<?php print $images_path; ?>/blog-3.jpg" alt="Blog Message">
            </a>
            <div class="media-body">
              <h4 class="media-heading"><a href="#">Story title</a></h4>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id ipsum varius, tincidunt odio nec, placerat enim.
            </div>
          </div>
          <a href="#" class="read-more">Read more stories...</a>
        </div>
        <div class="tab-pane" id="comments">
          <div class="media">
            <a class="pull-left" href="#">
              <img class="media-object" src="<?php print $images_path; ?>/face1.jpg" alt="Blog Message">
            </a>
            <div class="media-body">
              <a href="#">Alex Smith</a> <span class="text-muted">20 minutes ago</span>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id ipsum varius...</p>
            </div>
          </div>
          <div class="media">
            <a class="pull-left" href="#">
              <img class="media-object" src="<?php print $images_path; ?>/face2.jpg" alt="Blog Message">
            </a>
            <div class="media-body">
              <a href="#">Dan Smith</a> <span class="text-muted">1 hour ago</span>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id ipsum varius...</p>
            </div>
          </div>
          <div class="media">
            <a class="pull-left" href="#">
              <img class="media-object" src="<?php print $images_path; ?>/face3.jpg" alt="Blog Message">
            </a>
            <div class="media-body">
              <a href="#">David Smith</a> <span class="text-muted">11/10/2013</span>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id ipsum varius...</p>
            </div>
          </div>
        </div>
        <div class="tab-pane" id="events">
          <h5>Moblie Web+DevCon San Francisco 2014 <small>January 28, 2014</small></h5>
          <p class="text-muted"><i class="fa fa-map-marker"></i> Kuala Lumpur, Malaysia</p>
          <hr>
          <h5>2013 The 2nd International Conference on Information and Intelligent Computing(ICIIC 2013) <small>December 29, 2013</small></h5>
          <p class="text-muted"><i class="fa fa-map-marker"></i> San Francisco, California, United States</p>
          <hr>
          <h5>International Conference on Cloud Computing and eGovernances 2014 <small>November 20, 2013</small></h5>
          <p class="text-muted"><i class="fa fa-map-marker"></i> Saigon, Ho Chi Minh, Vietnam</p>
        </div>
      </div>
    <!---------------------------------------------------------------------------------->


  </div>
    </div>

  <div class="row">
    <div class="col-md-12 panel-col-bottom">
      <?php print $content['bottom']; ?>


      <!---------------------------------------------------------------------------------->
      <div class="row">
        <div class="col-md-12 block-header">
          <h2>
            <span class="title"><?php print t('IBLI ON THE GROUND'); ?></span><span class="decoration"></span><span class="decoration"></span><span class="decoration"></span>
          </h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <div class="thumbnail">
            <img src="<?php print $images_path; ?>/ibli-on-the-ground-1.jpg" class="img-responsive" alt="...">
            <div class="visit"><a href="#"><i class="fa fa-question-circle"></i> More details...</a></div>
            <div class="caption">
              <p><?php print t('Index-Based Livestock Takaful in Wajir'); ?></p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="thumbnail">
            <img src="<?php print $images_path; ?>/ibli-on-the-ground-2.jpg" class="img-responsive" alt="...">
            <div class="visit"><a href="#"><i class="fa fa-question-circle"></i> More details...</a></div>
            <div class="caption">
              <p><?php print t('Mifugo Maisha in Marsabit'); ?></p>
            </div>
          </div>
        </div>
        <div class="clearfix visible-sm"></div>
        <div class="col-md-3 col-sm-6">
          <div class="thumbnail">
            <img src="<?php print $images_path; ?>/ibli-on-the-ground-3.jpg" class="img-responsive" alt="...">
            <div class="visit"><a href="#"><i class="fa fa-question-circle"></i> More details...</a></div>
            <div class="caption">
              <p><?php print t('Index-Based Livestock Takaful in Borana'); ?></p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="thumbnail">
            <img src="<?php print $images_path; ?>/ibli-on-the-ground-4.jpg" class="img-responsive" alt="...">
            <div class="visit"><a href="#"><i class="fa fa-question-circle"></i> More details...</a></div>
            <div class="caption">
              <p><?php print t('Mifugo Maisha in Isiolo'); ?></p>
            </div>
          </div>
        </div>
      </div>
      <!---------------------------------------------------------------------------------->


    </div>
  </div>
</div>
