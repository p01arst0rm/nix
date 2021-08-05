doc_manual_dir =  meson.current_source_dir()

if get_option('doc_generate')

    # Provide a dummy environment for nix, so that it will not access files outside the macOS sandbox.
    dummy_env = [
        'HOME=/dummy',
        'NIX_CONF_DIR=/dummy',
        'NIX_SSL_CERT_FILE=/dummy/no-ca-bundle.crt',
        'NIX_STATE_DIR=/dummy',
    ]

    foreach dir : ['src']
        subdir(dir)
    endforeach

    # generate the web version of the manual
    #============================================================================

    custom_target(
        'index.html',
        input: src_markdown_files + [
            summary_dot_md,
            new_cli,
            conf_file_dot_md,
            builtins_dot_md,
        ] + files(
            'book.toml',
            'custom.css',
            join_paths('theme', 'highlight.js'),
        ),
        output: 'manual',
        command: [
            'mdbook',
            'build',
            meson.current_build_dir(),
            '-d',
            'manual',
        ],
        env: ['RUST_LOG=warn'],
        install: true,
        install_dir: docdir,
        build_by_default: true,
    )

endif
