# awsS3 Dependency File
#============================================================================




# Look for aws-cpp-sdk-s3.
#--------------------------------------------------
if (get_option('with_s3'))
  enable_s3 = meson.get_compiler('cpp').check_header('aws/s3/S3Client.h')
  
  aws_version = meson.get_compiler('cpp').get_define(
    'AWS_SDK_VERSION_STRING',
    prefix : '#include <aws/core/VersionConfig.h>'
  ).strip('"').split('.')
  
  conf_data.set('ENABLE_S3', 1, description : 'Whether to enable S3 support via aws-sdk-cpp.')
  conf_data.set('AWS_VERSION_MAJOR', aws_version[0], description : 'Major version of aws-sdk-cpp.')
  conf_data.set('AWS_VERSION_MINOR', aws_version[1], description : 'Minor version of aws-sdk-cpp.')
endif