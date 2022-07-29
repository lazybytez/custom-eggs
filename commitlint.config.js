// Configuration of commitlint to check commit message guidelines
module.exports = {
    extends: ['@commitlint/config-conventional'],
    parserPreset: 'conventional-changelog-conventionalcommits',
    rules: {
        'subject-max-length': [2, 'always', 50]
    }
};
