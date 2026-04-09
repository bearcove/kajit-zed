use zed_extension_api::{self as zed, Command, LanguageServerId, Result, Worktree};

struct KajitExtension;

impl zed::Extension for KajitExtension {
    fn new() -> Self {
        KajitExtension
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &Worktree,
    ) -> Result<Command> {
        let path = worktree.which("kajit").ok_or_else(|| {
            "kajit not found in PATH. Run `cargo xtask install` in the kajit repo first."
                .to_string()
        })?;

        Ok(Command {
            command: path,
            args: vec!["lsp".to_string()],
            env: vec![],
        })
    }
}

zed::register_extension!(KajitExtension);
