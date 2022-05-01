" Wiki settings
let wiki_default = {}
let wiki_default.auto_export = 0
let wiki_default.auto_toc = 0
let wiki_default.syntax = 'markdown'
let wiki_default.ext = '.md'
let wiki_default.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'sh': 'sh'}

let personal_wiki = copy(wiki_default)
let personal_wiki.path = '~/doc/adrian-cryptwiki/personal/notes/'
let personal_wiki.diary_rel_path = 'diary/'
let personal_wiki.path_html = '~/doc/adrian-cryptwiki/personal/exports/html/'

let gym_wiki = copy(wiki_default)
let gym_wiki.path = '~/doc/adrian-cryptwiki/gym/notes/'
let gym_wiki.diary_rel_path = 'workouts/'
let gym_wiki.path_html = '~/doc/adrian-cryptwiki/gym/exports/html/'

let work_wiki = copy(wiki_default)
let work_wiki.path = '~/doc/adrian-cryptwiki/work/notes/'
let work_wiki.diary_rel_path = 'tracker/'
let work_wiki.path_html = '~/doc/adrian-cryptwiki/work/exports/html/'

let dissertation_wiki = copy(wiki_default)
let dissertation_wiki.path = '~/doc/adrian-cryptwiki/dissertation/notes/'
let dissertation_wiki.diary_rel_path = 'tracker/'
let dissertation_wiki.path_html = '~/doc/adrian-cryptwiki/dissertation/exports/html/'

let g:vimwiki_list = [personal_wiki, gym_wiki, work_wiki, dissertation_wiki]
