# `ngx_http_image_filter_module`



## NGINX Image Filter Module

  * <https://nginx.org/>
  * <https://github.com/nginx/nginx>

## Modifications

_Original source is from [NGINX 1.11.13](https://raw.githubusercontent.com/nginx/nginx/release-1.11.13/src/http/modules/ngx_http_image_filter_module.c)_

### Always process the source JPEG or PNG image

Original NGINX code would only resize the image if:

  * The source image exceeded the maximum width or height settings
    * OR
  * The JPEG meta-data exceeded 5% of the file size

Set `ctx->force` to ensure the image is always processed. This allows setting the output JPEG quality without changing the image dimensions

### Output JPEG irrespective of whether the source image was PNG or JPEG

PNG was designed to be lossless and usually has larger file size. In my use case JPEG output is more appropriate.

## To-Do

  1. Currently changes above are hard coded. These should be changed to configuration settings.
  2. Submit chnages back to NGINX!


## License

  * Same terms as NGINX. See [LICENSE](./docs/text/LICENSE)
  
