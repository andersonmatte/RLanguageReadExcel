library(jsonlite)
library(xlsx)

all.equal(mtcars, fromJSON(toJSON(mtcars)))

# Faz a leitura do arquivo .json e adiciona o retorno na variavel de retorno.
retorno <- fromJSON('import/unidades_federativas.json', simplifyVector = TRUE)

print(retorno)

# Faz a escrita do arquivo .xlsx com base nos dados retornados do arquivo JSON.
write.xlsx(retorno, file="UnidadesFederativas.xlsx", sheetName="USA Arrests", col.names=TRUE, row.names=TRUE, append=FALSE)



