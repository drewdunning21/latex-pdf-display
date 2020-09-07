if !exists("g:default_pdf_viewer")
    let g:default_pdf_viewer = 'evince'
endif
fun! LatexDisplay()
    lua for k in pairs(package.loaded) do if k:match("^latex%-display") then package.loaded[k] = nil end end
    lua require("latex-display").displayPdf()
    edit #
endfun

nmap dsp :call LatexDisplay()<CR>

augroup LatexDisplay
    autocmd!
augroup END
