// Configuration of commitlint to check commit message guidelines
module.exports = {
    parserPreset: "conventional-changelog-conventionalcommits",
    rules: {
      "subject-max-length": [2, "always", 50],
      "subject-case": [
        2,
        "never",
        ["sentence-case", "start-case"]
      ],
      "subject-empty": [2, "never"],
      "subject-full-stop": [2, "never", "."],
      "type-case": [2, "always", "lower-case"],
      "type-empty": [2, "never"],
      "type-enum": [
        2,
        "always",
        [
          "feat",
          "fix",
          "perf",
          "refactor",
          "cs",
          "test",
          "build",
          "ci",
          "docs",
          "changelog",
          "bump"
        ]
      ],
      "scope-empty": [2, "always"],
      "header-max-length": [2, "always", 75],
      "body-leading-blank": [1, "always"],
      "body-max-line-length": [2, "always", 75],
      "footer-leading-blank": [1, "always"],
      "footer-max-line-length": [2, "always", 75]
    }
  };
