    proxy_intercept_errors on;
    error_page 301 302 307 403 404 = @empty_404_no_type;
    gzip off;
    proxy_hide_header x-amz-id-2;
    proxy_hide_header x-amz-request-id;
    proxy_hide_header x-amz-replication-status;
    proxy_hide_header x-amz-version-id;
    proxy_hide_header expires;
    proxy_hide_header cache-control;
    proxy_hide_header vary;
    proxy_set_header Host $http_x_next_host;
    proxy_pass https://$http_x_next_host/$x_asset_path;
    image_filter_jpeg_quality $vc_quality;
    image_filter_buffer 32m;
    image_filter_interlace off;
    image_filter resize $vc_max_width $vc_max_height;