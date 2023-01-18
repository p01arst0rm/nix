# aws s3 dependency file
#============================================================================


# Look for aws-cpp-sdk, an optional dependency
#--------------------------------------------------
aws_sdk_cpp_dep_list = [
    dependency('aws-cpp-sdk-core', required: get_option('enable_s3')),
    dependency('aws-cpp-sdk-s3', required: get_option('enable_s3')),
    dependency('aws-cpp-sdk-transfer', required: get_option('enable_s3'))
]

aws_sdk_cpp_dep = declare_dependency(dependencies : aws_sdk_cpp_dep_list)

# check if dependencies are found
#--------------------------------------------------
have_aws_sdk_cpp = true
foreach dep : aws_sdk_cpp_dep_list
    if not dep.found()
        have_aws_sdk_cpp = false
    endif
endforeach


# set config variable(s)
#--------------------------------------------------
config_h.set(
    'ENABLE_S3',
    have_aws_sdk_cpp.to_int(),
    description : 'Whether to enable S3 support via aws-sdk-cpp.')

if have_aws_sdk_cpp
    check_s3client = cpp.check_header(
        'aws/s3/S3Client.h',
        dependencies: aws_sdk_cpp_dep)

    if check_s3client
        config_h.set(
            'HAVE_AWS_S3_S3CLIENT_H', 1,
            description : 'Whether to enable S3 support via aws-sdk-cpp.')
    endif

    aws_version = meson.get_compiler('cpp').get_define(
        'AWS_SDK_VERSION_STRING',
        prefix : '#include <aws/core/VersionConfig.h>'
        ).strip('"').split('.')

    config_h.set(
        'AWS_VERSION_MAJOR', aws_version[0],
        description : 'Major version of aws-sdk-cpp.')

    config_h.set(
        'AWS_VERSION_MINOR', aws_version[1],
        description : 'Minor version of aws-sdk-cpp.')
    config_h.set(
        'AWS_VERSION_PATCH', aws_version[2],
        description : 'Patch version of aws-sdk-cpp.')

endif
