" vim-airline template by chartoin (http://github.com/chartoin)
" Base 16 Ocean Scheme by Chris Kempson (http://chriskempson.com)
let g:airline#themes#base16_ocean#palette = {}
let s:gui00 = "#2b303b"
let s:gui01 = "#343d46"
let s:gui02 = "#4f5b66"
let s:gui03 = "#65737e"
let s:gui04 = "#a7adba"
let s:gui05 = "#c0c5ce"
let s:gui06 = "#dfe1e8"
let s:gui07 = "#eff1f5"
let s:gui08 = "#bf616a"
let s:gui09 = "#d08770"
let s:gui0A = "#ebcb8b"
let s:gui0B = "#a3be8c"
let s:gui0C = "#96b5b4"
let s:gui0D = "#8fa1b3"
let s:gui0E = "#b48ead"
let s:gui0F = "#ab7967"

let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "10"
  let s:cterm02 = "11"
  let s:cterm04 = "12"
  let s:cterm06 = "13"
  let s:cterm09 = "09"
  let s:cterm0F = "14"
endif

let s:N1   = [ s:gui01, s:gui0D, s:cterm01, s:cterm0D ]
let s:N2   = [ s:gui04, s:gui02, s:cterm04, s:cterm02 ]
let s:N3   = [ s:gui03, s:gui01, s:cterm03, s:cterm01 ]
let g:airline#themes#base16_ocean#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui01, s:gui0C, s:cterm01, s:cterm0C ]
let s:I2   = [ s:gui04, s:gui02, s:cterm04, s:cterm02 ]
let s:I3   = [ s:gui03, s:gui01, s:cterm03, s:cterm01 ]
let g:airline#themes#base16_ocean#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui01, s:gui09, s:cterm01, s:cterm09 ]
let s:R2   = [ s:gui04, s:gui02, s:cterm04, s:cterm02 ]
let s:R3   = [ s:gui03, s:gui01, s:cterm03, s:cterm01 ]
let g:airline#themes#base16_ocean#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui01, s:gui0E, s:cterm01, s:cterm0E ]
let s:V2   = [ s:gui04, s:gui02, s:cterm04, s:cterm02 ]
let s:V3   = [ s:gui03, s:gui01, s:cterm03, s:cterm01 ]
let g:airline#themes#base16_ocean#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:gui02, s:gui01, s:cterm02, s:cterm01 ]
let s:IA2   = [ s:gui02, s:gui01, s:cterm02, s:cterm01 ]
let s:IA3   = [ s:gui02, s:gui01, s:cterm02, s:cterm01 ]
let g:airline#themes#base16_ocean#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Accents
let g:airline#themes#base16_ocean#palette.accents = {
  \ 'red': airline#themes#get_highlight('Identifier'),
  \ 'green': airline#themes#get_highlight('String'),
  \ 'blue': airline#themes#get_highlight('Function'),
  \ 'yellow': airline#themes#get_highlight('Label'),
  \ 'orange': airline#themes#get_highlight('Constant'),
  \ 'purple': airline#themes#get_highlight('Conditional'),
  \ }

" Warnings and errors
let s:WA = airline#themes#get_highlight2(['WarningMsg', 'bg'], ['WarningMsg', 'fg'], 'bold')
let s:WA = [ s:WA[0], s:WA[1], s:WA[2], s:WA[3] ]
let g:airline#themes#base16_ocean#palette.normal.airline_warning = s:WA
let g:airline#themes#base16_ocean#palette.insert.airline_warning = s:WA
let g:airline#themes#base16_ocean#palette.visual.airline_warning = s:WA
let g:airline#themes#base16_ocean#palette.replace.airline_warning = s:WA

let s:ER = airline#themes#get_highlight2(['ErrorMsg', 'bg'], ['ErrorMsg', 'fg'], 'bold')
let s:ER = [ s:ER[0], s:ER[1], s:ER[2], s:ER[3] ]
let g:airline#themes#base16_ocean#palette.normal.airline_error = s:ER
let g:airline#themes#base16_ocean#palette.insert.airline_error = s:ER
let g:airline#themes#base16_ocean#palette.visual.airline_error = s:ER
let g:airline#themes#base16_ocean#palette.replace.airline_error = s:ER

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base16_ocean#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm07, s:cterm02, '' ],
      \ [ s:gui07, s:gui04, s:cterm07, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm05, s:cterm01, 'bold' ])
