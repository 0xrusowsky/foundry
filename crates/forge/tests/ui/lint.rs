use foundry_test_utils::runner;
use std::path::Path;

#[test]
fn forge_lint_ui_tests() -> eyre::Result<()> {
    let forge_cmd = Path::new(env!("CARGO_BIN_EXE_forge"));

    let forge_dir = Path::new(env!("CARGO_MANIFEST_DIR"));
    let lint_testdata = forge_dir.parent().unwrap().join("lint").join("testdata");

    runner::run_tests(&forge_cmd, &lint_testdata)
}
