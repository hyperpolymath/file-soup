;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — file-soup

(ecosystem
  (version "1.0.0")
  (name "file-soup")
  (type "project")
  (purpose "*Cross-platform file system intelligence tool with a Notepad++-style plugin architecture*")

  (position-in-ecosystem
    "Part of hyperpolymath ecosystem. Follows RSR guidelines.")

  (related-projects
    (project (name "rhodium-standard-repositories")
             (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
             (relationship "standard")))

  (what-this-is "*Cross-platform file system intelligence tool with a Notepad++-style plugin architecture*")
  (what-this-is-not "- NOT exempt from RSR compliance"))
