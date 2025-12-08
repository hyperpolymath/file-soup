;;; STATE.scm — FSLint (file-soup) Project State Checkpoint
;;; Format: https://github.com/hyperpolymath/state.scm
;;; Download at end of session, upload at start of next conversation

;;; ============================================================================
;;; METADATA
;;; ============================================================================

(define metadata
  '((format-version . "1.0")
    (schema-version . "state.scm-v1")
    (created-at . "2025-12-08T00:00:00Z")
    (last-updated . "2025-12-08T00:00:00Z")
    (generator . "claude-opus-4")))

;;; ============================================================================
;;; USER CONTEXT
;;; ============================================================================

(define user
  '((name . "hyperpolymath")
    (roles . ("developer" "architect" "maintainer"))
    (preferences
     (languages-preferred . ("rust" "scheme" "ada"))
     (languages-avoid . ())
     (tools-preferred . ("cargo" "git" "claude-code"))
     (values . ("foss" "reproducibility" "cross-platform" "plugin-architecture")))))

;;; ============================================================================
;;; SESSION CONTEXT
;;; ============================================================================

(define session
  '((conversation-id . "claude/create-state-scm-0137rdctUFw9VkTEJwu17B46")
    (started-at . "2025-12-08")
    (messages-used . 0)
    (messages-remaining . #f)
    (token-limit-reached . #f)))

;;; ============================================================================
;;; FOCUS
;;; ============================================================================

(define focus
  '((current-project . "fslint")
    (current-phase . "post-mvp-maintenance")
    (deadline . #f)
    (blocking-projects . ())))

;;; ============================================================================
;;; PROJECT CATALOG
;;; ============================================================================

(define projects
  '(
    ;; -------------------------------------------------------------------------
    ;; FSLint - Main Project
    ;; -------------------------------------------------------------------------
    ((name . "fslint")
     (status . "in-progress")
     (completion . 85)
     (category . "developer-tools")
     (phase . "post-mvp")
     (dependencies . ())
     (blockers . ())
     (next . ("implement-ocr-pdf-parsing"
              "enhance-ai-detection-heuristics"
              "add-parallel-scanning"
              "wasm-plugin-runtime"))
     (chat-reference . "claude/git-status-shell-extension-01L7Ppr72PPKbg6yb4Ko4baG")
     (notes . "Cross-platform file system intelligence tool with Notepad++-style plugin architecture. v0.1.0 released. Core functionality complete with 8 plugins."))

    ;; -------------------------------------------------------------------------
    ;; Core Crates (Complete)
    ;; -------------------------------------------------------------------------
    ((name . "fslint-plugin-api")
     (status . "complete")
     (completion . 100)
     (category . "fslint-core")
     (phase . "stable")
     (dependencies . ())
     (blockers . ())
     (next . ())
     (chat-reference . #f)
     (notes . "Plugin trait definitions. PluginMetadata, PluginContext, PluginResult, PluginStatus, PluginError. Stable API."))

    ((name . "fslint-plugin-sdk")
     (status . "complete")
     (completion . 100)
     (category . "fslint-core")
     (phase . "stable")
     (dependencies . ("fslint-plugin-api"))
     (blockers . ())
     (next . ())
     (chat-reference . #f)
     (notes . "Helper utilities for plugin development. Path utilities, pattern matching, metadata helpers."))

    ((name . "fslint-core")
     (status . "complete")
     (completion . 100)
     (category . "fslint-core")
     (phase . "stable")
     (dependencies . ("fslint-plugin-api"))
     (blockers . ())
     (next . ("add-parallel-scanning" "wasm-runtime-integration"))
     (chat-reference . #f)
     (notes . "Scanner, PluginLoader, Config, ResultCache, SafetyChecker. Smart caching by (path, mtime, size)."))

    ((name . "fslint-cli")
     (status . "complete")
     (completion . 100)
     (category . "fslint-core")
     (phase . "stable")
     (dependencies . ("fslint-core"))
     (blockers . ())
     (next . ("add-interactive-mode" "shell-completions"))
     (chat-reference . #f)
     (notes . "CLI with subcommands: scan, plugins, enable, disable, config, query. Multiple output formats: table, json, simple."))

    ;; -------------------------------------------------------------------------
    ;; Plugins - Default Enabled (Complete)
    ;; -------------------------------------------------------------------------
    ((name . "plugin-git-status")
     (status . "complete")
     (completion . 100)
     (category . "fslint-plugin")
     (phase . "stable")
     (dependencies . ("fslint-plugin-api" "git2"))
     (blockers . ())
     (next . ())
     (chat-reference . #f)
     (notes . "Git repository status and branch information. Uses libgit2. Shows New/Modified/Deleted/Renamed/Conflict/Ignored/Clean."))

    ((name . "plugin-file-age")
     (status . "complete")
     (completion . 100)
     (category . "fslint-plugin")
     (phase . "stable")
     (dependencies . ("fslint-plugin-api" "fslint-plugin-sdk"))
     (blockers . ())
     (next . ())
     (chat-reference . #f)
     (notes . "Highlights recently modified files. Categories: Today, Recent (1-3 days), This week, This month, Last 3 months, This year, Old."))

    ((name . "plugin-grouping")
     (status . "complete")
     (completion . 100)
     (category . "fslint-plugin")
     (phase . "stable")
     (dependencies . ("fslint-plugin-api" "fslint-plugin-sdk"))
     (blockers . ())
     (next . ())
     (chat-reference . #f)
     (notes . "File categorization: Node Dependencies, macOS System File, Temporary File, Build Artifact, Image/Video/Audio/Document, Archive, Hidden."))

    ;; -------------------------------------------------------------------------
    ;; Plugins - Default Disabled (Functional)
    ;; -------------------------------------------------------------------------
    ((name . "plugin-version-detection")
     (status . "complete")
     (completion . 100)
     (category . "fslint-plugin")
     (phase . "stable")
     (dependencies . ("fslint-plugin-api" "fslint-plugin-sdk" "regex"))
     (blockers . ())
     (next . ())
     (chat-reference . #f)
     (notes . "Detects versioned files: _v1, _v2, _final, _old, _backup, (1), (2). Priority-based categorization."))

    ((name . "plugin-duplicate-finder")
     (status . "complete")
     (completion . 100)
     (category . "fslint-plugin")
     (phase . "stable")
     (dependencies . ("fslint-plugin-api" "sha2" "hex"))
     (blockers . ())
     (next . ())
     (chat-reference . #f)
     (notes . "SHA-256 hash-based duplicate detection. Configurable min_size. Uses global hash cache."))

    ((name . "plugin-secret-scanner")
     (status . "complete")
     (completion . 100)
     (category . "fslint-plugin")
     (phase . "stable")
     (dependencies . ("fslint-plugin-api" "fslint-plugin-sdk" "regex"))
     (blockers . ())
     (next . ("add-more-patterns" "custom-pattern-config"))
     (chat-reference . #f)
     (notes . "Detects: AWS Access Key, Generic API Key, Generic Secret, GitHub Token, GitHub OAuth, Slack Token, Slack Webhook, Private Key, JWT Token, Password in code."))

    ((name . "plugin-ai-detection")
     (status . "in-progress")
     (completion . 70)
     (category . "fslint-plugin")
     (phase . "development")
     (dependencies . ("fslint-plugin-api" "fslint-plugin-sdk" "exif"))
     (blockers . ())
     (next . ("implement-png-text-chunk-reading" "add-more-ai-tool-signatures"))
     (chat-reference . #f)
     (notes . "EXIF-based AI detection works. PNG tEXt chunk checking is placeholder. Detects: Stable Diffusion, Midjourney, DALL-E, AI Generated markers."))

    ((name . "plugin-ocr-status")
     (status . "blocked")
     (completion . 30)
     (category . "fslint-plugin")
     (phase . "development")
     (dependencies . ("fslint-plugin-api" "fslint-plugin-sdk"))
     (blockers . ("need-pdf-library-with-text-extraction"))
     (next . ("integrate-pdf-text-extraction-library" "implement-ocr-detection-heuristics"))
     (chat-reference . #f)
     (notes . "PDF text layer detection. Current implementation is PLACEHOLDER. Needs real PDF library integration for text extraction."))

    ;; -------------------------------------------------------------------------
    ;; Phase 2 Features (Planned)
    ;; -------------------------------------------------------------------------
    ((name . "wasm-plugin-runtime")
     (status . "paused")
     (completion . 0)
     (category . "fslint-feature")
     (phase . "planning")
     (dependencies . ("fslint-core" "wasmtime"))
     (blockers . ("native-plugins-first-priority"))
     (next . ("design-wasm-plugin-api" "implement-wasmtime-integration"))
     (chat-reference . #f)
     (notes . "WASM support for sandboxed plugins. wasmtime dependency already in Cargo.toml. Phase 2 priority."))

    ((name . "parallel-scanning")
     (status . "paused")
     (completion . 0)
     (category . "fslint-feature")
     (phase . "planning")
     (dependencies . ("fslint-core" "rayon"))
     (blockers . ())
     (next . ("add-rayon-dependency" "parallelize-file-iteration" "parallelize-plugin-execution"))
     (chat-reference . #f)
     (notes . "Parallel file scanning for large directories. Will use rayon. Phase 2 priority."))

    ((name . "shell-extensions")
     (status . "paused")
     (completion . 0)
     (category . "fslint-feature")
     (phase . "research")
     (dependencies . ("fslint-core"))
     (blockers . ())
     (next . ("research-windows-explorer-extensions" "research-macos-finder-extensions" "research-nautilus-extensions"))
     (chat-reference . #f)
     (notes . "Shell integration for Windows Explorer, macOS Finder, Linux Nautilus. Phase 2/3 goal."))

    ;; -------------------------------------------------------------------------
    ;; Documentation & Infrastructure (Complete)
    ;; -------------------------------------------------------------------------
    ((name . "documentation")
     (status . "complete")
     (completion . 100)
     (category . "fslint-docs")
     (phase . "stable")
     (dependencies . ())
     (blockers . ())
     (next . ())
     (chat-reference . #f)
     (notes . "README.md, QUICKSTART.md, PLUGIN_DEVELOPMENT.md, CONTRIBUTING.md, CHANGELOG.md, CLAUDE.md, PROJECT_SUMMARY.md, RSR_COMPLIANCE.md, TPCF.md."))

    ((name . "ci-cd")
     (status . "complete")
     (completion . 100)
     (category . "fslint-infra")
     (phase . "stable")
     (dependencies . ())
     (blockers . ())
     (next . ())
     (chat-reference . #f)
     (notes . "GitHub Actions: ci.yml, release.yml, jekyll-gh-pages.yml, codeql.yml, dependabot.yml. Multi-platform builds."))

    ))

;;; ============================================================================
;;; ISSUES / TECHNICAL DEBT
;;; ============================================================================

(define issues
  '(
    ((id . "ISSUE-001")
     (severity . "medium")
     (component . "plugin-ocr-status")
     (description . "OCR status plugin is a placeholder. Needs real PDF library with text extraction capability.")
     (suggested-fix . "Integrate pdf-extract or similar crate for PDF text layer detection."))

    ((id . "ISSUE-002")
     (severity . "low")
     (component . "plugin-ai-detection")
     (description . "PNG tEXt chunk reading is not implemented. Only EXIF-based detection works.")
     (suggested-fix . "Use png crate to read tEXt/iTXt chunks for Stable Diffusion parameters."))

    ((id . "ISSUE-003")
     (severity . "low")
     (component . "fslint-core")
     (description . "Scanning is single-threaded. Large directories are slow.")
     (suggested-fix . "Add rayon for parallel file iteration and plugin execution."))

    ((id . "ISSUE-004")
     (severity . "low")
     (component . "plugin-duplicate-finder")
     (description . "Global static hash cache may leak memory in long-running sessions.")
     (suggested-fix . "Consider LRU cache or session-scoped cache."))

    ))

;;; ============================================================================
;;; QUESTIONS FOR USER
;;; ============================================================================

(define questions
  '(
    ((id . "Q-001")
     (topic . "distribution")
     (question . "Should Homebrew formula and winget manifest be prioritized for v0.2.0?")
     (context . "Installation scripts exist but package manager integration is pending."))

    ((id . "Q-002")
     (topic . "plugins")
     (question . "Which additional plugins should be prioritized: malware-scanner, license-detector, or dependency-analyzer?")
     (context . "Roadmap lists several potential plugins but no clear priority."))

    ((id . "Q-003")
     (topic . "wasm")
     (question . "Is WASM plugin runtime a priority or should native performance be maximized first?")
     (context . "wasmtime dependency exists but integration is not started."))

    ((id . "Q-004")
     (topic . "ocr")
     (question . "Which PDF library should be used for OCR status detection: pdf-extract, lopdf, or pdfium?")
     (context . "Current pdf crate dependency may not support text extraction well."))

    ))

;;; ============================================================================
;;; CRITICAL NEXT ACTIONS
;;; ============================================================================

(define critical-next
  '("Complete OCR-status plugin with real PDF text extraction"
    "Implement PNG tEXt chunk reading for AI-detection plugin"
    "Add parallel scanning with rayon for performance"
    "Publish to crates.io as fslint"
    "Create Homebrew formula for macOS/Linux distribution"))

;;; ============================================================================
;;; HISTORY / VELOCITY
;;; ============================================================================

(define history
  '(
    ((snapshot-date . "2025-11-22")
     (total-completion . 80)
     (notes . "Initial v0.1.0 release. All 8 plugins implemented. Core architecture stable."))

    ((snapshot-date . "2025-12-08")
     (total-completion . 85)
     (notes . "RSR Gold Tier compliance achieved. CI/CD workflows added. Documentation complete."))

    ))

;;; ============================================================================
;;; FILES CREATED/MODIFIED THIS SESSION
;;; ============================================================================

(define session-files
  '((created . ("STATE.scm"))
    (modified . ())))

;;; ============================================================================
;;; CONTEXT NOTES
;;; ============================================================================

(define context-notes
  "FSLint (file-soup) is a cross-platform file system intelligence tool with a
Notepad++-style plugin architecture. The project is at v0.1.0 with 8 working
plugins. Core architecture is stable and well-documented.

Key architectural decisions:
- Rust over Ada for ecosystem and mobile support
- Native plugins first, WASM later for sandboxing
- Trait-based Plugin API for extensibility
- Smart caching by (path, mtime, size) tuple

Current state:
- Builds: YES (cargo build --workspace succeeds)
- Tests: YES (cargo test --workspace passes)
- Clippy: YES (no warnings with -D warnings)
- Documentation: Comprehensive

Next major milestone: v0.2.0 with parallel scanning and WASM support.

Repository: https://github.com/Hyperpolymath/file-soup
Branch: claude/create-state-scm-0137rdctUFw9VkTEJwu17B46")

;;; ============================================================================
;;; ROADMAP
;;; ============================================================================

(define roadmap
  '(
    ;; v0.1.0 - RELEASED
    ((version . "0.1.0")
     (status . "released")
     (date . "2025-11-22")
     (features . ("Core plugin architecture"
                  "8 built-in plugins"
                  "Query engine"
                  "Multiple output formats"
                  "Smart caching"
                  "Cross-platform support")))

    ;; v0.2.0 - NEXT
    ((version . "0.2.0")
     (status . "planned")
     (date . #f)
     (features . ("Parallel file scanning (rayon)"
                  "WASM plugin runtime (wasmtime)"
                  "Plugin configuration UI"
                  "macOS bundle collapsing (.app)"
                  "Complete OCR-status plugin"
                  "Enhanced AI-detection")))

    ;; v0.3.0 - FUTURE
    ((version . "0.3.0")
     (status . "planned")
     (date . #f)
     (features . ("Shell extension integration"
                  "Shadow navigation for symlinks"
                  "Virtual filesystem across disks/cloud"
                  "Email attachment integration"
                  "Focus mode filters")))

    ;; Additional Plugins - FUTURE
    ((version . "plugins-future")
     (status . "planned")
     (date . #f)
     (features . ("Malware scanner plugin"
                  "License detector plugin"
                  "Dependency analyzer plugin"
                  "Code complexity metrics plugin"
                  "Image metadata extractor plugin")))

    ))

;;; ============================================================================
;;; END OF STATE
;;; ============================================================================

;;; To use this file:
;;; 1. Download at end of each Claude conversation
;;; 2. Upload at start of next conversation
;;; 3. Claude will parse and restore context
;;;
;;; Manual edits allowed: blockers, next, completion, context-notes
;;; Avoid editing: dependencies, status (let Claude manage), metadata timestamps
