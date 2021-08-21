project('com.github.davidpeach.gtkhelloagain', 'vala', 'c')

i18n = import('i18n')

add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language: 'c')

executable(
    meson.project_name(),
    'src' / 'Application.vala',
    dependencies: [
        dependency('gtk+-3.0')
    ],
    install: true
)

#install_data(
#    'data' / 'hello-again.desktop',
#    install_dir: get_option('datadir') / 'applications',
#    rename: meson.project_name() + '.desktop'
#)
i18n.merge_file(
    input: 'data' / 'hello-again.desktop.in',
    output: meson.project_name() + '.desktop',
    po_dir: meson.source_root() / 'po',
    type: 'desktop',
    install: true,
    install_dir: get_option('datadir') / 'applications'
)

#install_data(
#    'data' / 'hello-again.appdata.xml',
#    install_dir: get_option('datadir') / 'metainfo',
#    rename: meson.project_name() + '.appdata.xml'
#)
i18n.merge_file(
    input: 'data' / 'hello-again.appdata.xml.in',
    output: meson.project_name() + '.appdata.xml',
    po_dir: meson.source_root() / 'po',
    install: true,
    install_dir: get_option('datadir') / 'metainfo'
)

subdir('po')
