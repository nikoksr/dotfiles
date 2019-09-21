" Check Python files with pyls and flake8.
let b:ale_linters = ['pyls', 'flake8']
" Fix Python files with autopep8 and yapf.
 let b:ale_fixers = [
\   'remove_trailing_lines',
\   'isort',
\   'ale#fixers#generic_python#BreakUpLongLines',
\   'yapf',
\]
