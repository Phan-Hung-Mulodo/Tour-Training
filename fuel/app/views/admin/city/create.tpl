<div class="page-content-wrapper">
    <!-- BEGIN CONTENT BODY -->
    <div class="page-content">
        <div class="page-bar x_panel">
            <ul class="page-breadcrumb">
                <li>
                    <a href="index.php">Home</a>
                    <i class="fa fa-circle"></i>
                </li>
                <li>
                    <span>City</span>
                </li>
            </ul>
        </div>
        <!-- END PAGE BAR -->
        <!-- BEGIN PAGE TITLE-->
        <div class="portlet light x_panel">
            <div class="portlet">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="icon-settings font-dark"></i>
                        <span class="caption-subject font-dark sbold uppercase">City Create</span>
                    </div>
                </div>
                <div class="portlet-body form">
                    <form class="form-horizontal" role="form" method="post" action="{Router::get('city_add')}">
                        <div class="form-body">
                            <div class="form-group">
                                <label class="col-md-3 control-label">Code</label>
                                <div class="col-md-5">
                                    <input type="text" class="form-control" placeholder="Enter text" name="code">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Name</label>
                                <div class="col-md-5">
                                    <input type="text" class="form-control" placeholder="Enter text" name="name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Country</label>
                                <div class="col-md-5">
                                    <select class="form-control" name="country_id">
                                        <option value="0">-- Choose a country --</option>
                                        {foreach $countries as $key => $value}
                                            <option value="{$value->id}">{$value->code}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="row">
                                <div class="col-md-offset-3 col-md-9">
                                    <button type="submit" class="btn green">Submit</button>
                                    <a class="btn default" href="{Router::get('city')}">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        </h1>
    </div>
    <!-- END CONTENT BODY -->
</div>