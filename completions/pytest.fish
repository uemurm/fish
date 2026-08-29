# pytest completion for Fish
# Based on pytest 9.1.x command-line options.

# General
complete --command pytest --short-option k --require-parameter --description 'Only run tests matching the given expression'
complete --command pytest --short-option m --require-parameter --description 'Only run tests matching the given mark expression'
complete --command pytest --long-option markers --description 'Show available markers'

# Failure handling
complete --command pytest --short-option x --long-option exitfirst --description 'Exit instantly on first error or failed test'
complete --command pytest --long-option maxfail --require-parameter --description 'Exit after the specified number of failures or errors'
complete --command pytest --long-option strict-config --description 'Enable strict_config'
complete --command pytest --long-option strict-markers --description 'Enable strict_markers'
complete --command pytest --long-option strict --description 'Enable all strictness options'

# Fixtures and debugging
complete --command pytest --long-option fixtures --description 'Show available fixtures'
complete --command pytest --long-option funcargs --description 'Alias for --fixtures'
complete --command pytest --long-option fixtures-per-test --description 'Show fixtures used by each test'
complete --command pytest --long-option pdb --description 'Start the interactive Python debugger on errors'
complete --command pytest --long-option pdbcls --require-parameter --description 'Specify a custom interactive Python debugger'
complete --command pytest --long-option trace --description 'Immediately break when running each test'

# Output / verbosity
complete --command pytest --short-option v --long-option verbose --description 'Increase verbosity'
complete --command pytest --short-option q --long-option quiet --description 'Decrease verbosity'
complete --command pytest --long-option verbosity --require-parameter --description 'Set verbosity'
complete --command pytest --long-option no-header --description 'Disable header'
complete --command pytest --long-option no-summary --description 'Disable summary'
complete --command pytest --long-option no-fold-skipped --description 'Do not fold skipped tests in short summary'
complete --command pytest --long-option force-short-summary --description 'Force condensed summary output'

# Tracebacks
complete --command pytest --short-option l --long-option showlocals --description 'Show locals in tracebacks'
complete --command pytest --long-option no-showlocals --description 'Hide local variables in tracebacks'
complete --command pytest --long-option tb --require-parameter --description 'Traceback print mode'
complete --command pytest --long-option xfail-tb --description 'Show tracebacks for xfail'
complete --command pytest --long-option full-trace --description 'Do not cut tracebacks'

# Capturing
complete --command pytest --short-option s --long-option capture --require-parameter --description 'Per-test capturing method'
complete --command pytest --long-option show-capture --require-parameter --description 'Control captured output shown on failures'

# Test execution / cache
complete --command pytest --long-option runxfail --description 'Report xfail tests as if they were not marked'
complete --command pytest --long-option lf --description 'Rerun only tests that failed last time'
complete --command pytest --long-option last-failed --description 'Rerun only tests that failed last time'
complete --command pytest --long-option ff --description 'Run last failures first'
complete --command pytest --long-option failed-first --description 'Run last failures first'
complete --command pytest --long-option nf --description 'Run tests from new files first'
complete --command pytest --long-option new-first --description 'Run tests from new files first'
complete --command pytest --long-option cache-show --require-parameter --description 'Show cache contents'
complete --command pytest --long-option cache-clear --description 'Remove all cache contents'
complete --command pytest --long-option lfnf --require-parameter --description 'Control behavior when no previous failures exist'
complete --command pytest --long-option last-failed-no-failures --require-parameter --description 'Control behavior when no previous failures exist'
complete --command pytest --long-option sw --long-option stepwise --description 'Stop on failure and continue from last failure'
complete --command pytest --long-option sw-skip --long-option stepwise-skip --description 'Skip first failure and stop on next failure'
complete --command pytest --long-option sw-reset --long-option stepwise-reset --description 'Reset stepwise state'

# Reporting
complete --command pytest --long-option durations --require-parameter --description 'Show slowest setup/test durations'
complete --command pytest --long-option durations-min --require-parameter --description 'Minimum duration for slow test reporting'
complete --command pytest --short-option r --long-option report --require-parameter --description 'Show additional test summary information'
complete --command pytest --long-option disable-warnings --description 'Disable warnings summary'
complete --command pytest --long-option disable-pytest-warnings --description 'Disable warnings summary'
complete --command pytest --long-option color --require-parameter --description 'Color terminal output'
complete --command pytest --long-option code-highlight --require-parameter --description 'Whether code should be highlighted'

# JUnit / reporting files
complete --command pytest --long-option junitxml --require-parameter --description 'Create JUnit XML report'
complete --command pytest --long-option junit-xml --require-parameter --description 'Create JUnit XML report'
complete --command pytest --long-option junitprefix --require-parameter --description 'Prefix class names in JUnit XML'
complete --command pytest --long-option junit-prefix --require-parameter --description 'Prefix class names in JUnit XML'
complete --command pytest --long-option pastebin --require-parameter --description 'Send failure information to bpaste.net'

# Warnings
complete --command pytest --short-option W --long-option pythonwarnings --require-parameter --description 'Set Python warning filters'
complete --command pytest --long-option max-warnings --require-parameter --description 'Fail if warnings exceed this threshold'

# Collection
complete --command pytest --long-option collect-only --description 'Only collect tests, do not execute them'
complete --command pytest --long-option co --description 'Alias for --collect-only'
complete --command pytest --long-option pyargs --description 'Interpret arguments as Python packages'
complete --command pytest --long-option ignore --require-parameter --description 'Ignore path during collection'
complete --command pytest --long-option ignore-glob --require-parameter --description 'Ignore paths matching a glob'
complete --command pytest --long-option deselect --require-parameter --description 'Deselect item by node ID prefix'
complete --command pytest --long-option confcutdir --require-parameter --description 'Only load conftest.py files relative to this directory'
complete --command pytest --long-option noconftest --description 'Do not load any conftest.py files'
complete --command pytest --long-option keep-duplicates --description 'Keep duplicate tests'
complete --command pytest --long-option collect-in-virtualenv --description 'Do not ignore tests in a virtualenv'
complete --command pytest --long-option continue-on-collection-errors --description 'Run tests even when collection errors occur'
complete --command pytest --long-option import-mode --require-parameter --description 'Import mode for test modules and conftest files'
complete --command pytest --long-option doctest-modules --description 'Run doctests in all Python modules'
complete --command pytest --long-option doctest-report --require-parameter --description 'Doctest failure report format'
complete --command pytest --long-option doctest-glob --require-parameter --description 'Pattern for doctest text files'
complete --command pytest --long-option doctest-ignore-import-errors --description 'Ignore doctest collection import errors'
complete --command pytest --long-option doctest-continue-on-failure --description 'Continue doctest execution after first failure'

# Configuration
complete --command pytest --short-option c --long-option config-file --require-parameter --description 'Load configuration from the specified file'
complete --command pytest --long-option rootdir --require-parameter --description 'Define root directory for tests'
complete --command pytest --long-option basetemp --require-parameter --description 'Base temporary directory'
complete --command pytest --short-option V --long-option version --description 'Display pytest version and plugin information'
complete --command pytest --short-option h --long-option help --description 'Show help message and configuration info'

# Plugins
complete --command pytest --short-option p --description 'Early-load a plugin module or entry point'
complete --command pytest --long-option disable-plugin-autoload --description 'Disable plugin auto-loading'
complete --command pytest --long-option trace-config --description 'Trace pytest configuration'

# Debugging / assertion
complete --command pytest --long-option debug --require-parameter --description 'Store internal tracing information'
complete --command pytest --long-option assert --require-parameter --description 'Control assertion debugging'
complete --command pytest --long-option setup-only --description 'Only setup fixtures'
complete --command pytest --long-option setup-show --description 'Show fixture setup'
complete --command pytest --long-option setup-plan --description 'Show fixtures and tests without executing them'

# Logging
complete --command pytest --long-option log-level --require-parameter --description 'Logging level'
complete --command pytest --long-option log-format --require-parameter --description 'Logging format'
complete --command pytest --long-option log-date-format --require-parameter --description 'Logging date format'
complete --command pytest --long-option log-cli-level --require-parameter --description 'CLI logging level'
complete --command pytest --long-option log-cli-format --require-parameter --description 'CLI logging format'
complete --command pytest --long-option log-cli-date-format --require-parameter --description 'CLI logging date format'
complete --command pytest --long-option log-file --require-parameter --description 'Log file path'
complete --command pytest --long-option log-file-mode --require-parameter --description 'Log file open mode'
complete --command pytest --long-option log-file-level --require-parameter --description 'Log file logging level'
complete --command pytest --long-option log-file-format --require-parameter --description 'Log file format'
complete --command pytest --long-option log-file-date-format --require-parameter --description 'Log file date format'
complete --command pytest --long-option log-auto-indent --require-parameter --description 'Auto-indent multiline log messages'
complete --command pytest --long-option log-disable --require-parameter --description 'Disable a logger'

# Help / common aliases
complete --command pytest --long-option no-header --description 'Disable header'
complete --command pytest --long-option no-summary --description 'Disable summary'
