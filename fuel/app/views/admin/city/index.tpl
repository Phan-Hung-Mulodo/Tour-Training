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
            <div class="portlet-title">
                <div class="caption">
                    <span class="caption-subject bold uppercase">City</span>
                </div>
                <div class="actions">
                    <a class="btn btn-primary" href="{Router::get('city_create')}">
                        Insert
                    </a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th> # </th>
                            <th> Code </th>
                            <th> Name </th>
                            <th> Country </th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                            {foreach $cities as $key => $value}
                                <tr>
                                    <td>{$key}</td>
                                    <td>{$value->code}</td>
                                    <td>{$value->name}</td>
                                    <td>{$value->country_code}</td>
                                    <td>
                                        <a class="btn btn-primary btn-sm" href="{Router::get('city_edit', ['id' => $value->id])}"><i class="fa fa-pencil"></i></a>
                                        <a class="btn btn-danger btn-sm" href="{Router::get('city_delete', ['id' => $value->id])}"><i class="fa fa-close"></i></a>
                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        </h1>
    </div>
    <!-- END CONTENT BODY -->
</div>