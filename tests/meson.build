# Nix tests
#============================================================================

# TODO: nix tests is currently built alongside nix. this
# is fine for now, but ideally nix tests need to be 
# independent of nix itself

# ensure Nix is installed
#-------------------------------------------------
# nix_bin = find_program('nix')



# fetch nix tests
#-------------------------------------------------

nix_test_list = [
    'add.sh',
    'bash-profile.sh',
    'binary-cache-build-remote.sh',
    'binary-cache.sh',
    'brotli.sh',
    'build-delete.sh',
    'build-dry.sh',
    'build-remote-content-addressed-fixed.sh',
    'build-remote-content-addressed-floating.sh',
    'build-remote-input-addressed.sh',
    'build-remote.sh',
    'build-remote-trustless-after.sh',
    'build-remote-trustless.sh',
    'build-remote-trustless-should-fail-0.sh',
    'build-remote-trustless-should-pass-0.sh',
    'build-remote-trustless-should-pass-1.sh',
    'build-remote-trustless-should-pass-2.sh',
    'build-remote-trustless-should-pass-3.sh',
    'build.sh',
    'case-hack.sh',
    'check-refs.sh',
    'check-reqs.sh',
    'check.sh',
    'common.sh',
    'completions.sh',
    'compression-levels.sh',
    'compute-levels.sh',
    'config.sh',
    'db-migration.sh',
    'dependencies.builder0.sh',
    'dependencies.sh',
    'derivation-json.sh',
    'dump-db.sh',
    'eval.sh',
    'eval-store.sh',
    'experimental-features.sh',
    'export-graph.sh',
    'export.sh',
    'fetchClosure.sh',
    'fetchGitRefs.sh',
    'fetchGit.sh',
    'fetchGitSubmodules.sh',
    'fetchMercurial.sh',
    'fetchPath.sh',
    'fetchTree-file.sh',
    'fetchurl.sh',
    'filter-source.sh',
    'fixed.builder1.sh',
    'fixed.builder2.sh',
    'fixed.sh',
    'fmt.sh',
    'fmt.simple.sh',
    'function-trace.sh',
    'gc-auto.sh',
    'gc-concurrent2.builder.sh',
    'gc-concurrent.builder.sh',
    'gc-concurrent.sh',
    'gc-non-blocking.sh',
    'gc-runtime.sh',
    'gc.sh',
    'hash.sh',
    'import-derivation.sh',
    'impure-derivations.sh',
    'init.sh',
    'install-darwin.sh',
    'lang.sh',
    'lang-test-infra.sh',
    'legacy-ssh-store.sh',
    'linux-sandbox.sh',
    'local-store.sh',
    'logging.sh']


# run tests
#-------------------------------------------------
# Helper script for running the tests
run_test = find_program('run-test.sh')



foreach nix_test : nix_test_list
    test(nix_test,
        run_test,
        is_parallel : false,
        depends : nix_bin,
        suite : 'functional',
        args : nix_test)
endforeach
