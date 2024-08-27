" Syntax highlighting for .todo files

if exists("b:current_syntax")
    finish
endif

" Tarefas concluídas
syn match todoCompleted "\[x\].*$" 
" Tarefas pendentes
syn match todoPending "\[ \].*$"
" Tarefas em andamento
syn match todoInProgress "\[-\].*$"
" Comentários
syn match todoComment "//.*$"
" Prioridades
" syn match todoPriority "@prioridade-\(alta\|media\|baixa\)"
syn match todoPriorityHigh "@prioridade-alta"
syn match todoPriorityMedium "@prioridade-media"
syn match todoPriorityLow "@prioridade-baixa"
" Deadlines
syn match todoDeadline "@deadline([0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\})"
" Tags
syn match todoTag "#[a-zA-Z]\+"

" Definir cores
hi def link todoCompleted Comment
hi def link todoPending Todo
hi def link todoInProgress Statement
hi def link todoComment Comment
hi def link todoPriority Special
hi def link todoDeadline Constant
hi def link todoTag Identifier
hi todoPriorityHigh ctermfg=Red guifg=#ff0000 gui=bold       " Vermelho puro para alta prioridade
hi todoPriorityMedium ctermfg=Yellow guifg=#fabd2f gui=italic " Amarelo ouro para média prioridade
hi todoPriorityLow ctermfg=Green guifg=#00ff00               " Verde puro para baixa prioridade


let b:current_syntax = "todo"
