#   def verificaExecucao(estado, programa) do #retorna a nova posição no grafo
    
#   end
  
#   # tipoExecucao = [ | <
#   def trab(estadoAtual, [execucao | resto]) do
#     {x, y, w, z} = execucao

#     proxEstado = nil

#     if w == "[" do
#         IO.puts "if"
#         proxEstado = verificaExecucao(estadoAtual, x)
#         if proxEstado == nil do false end
#     else 
#         IO.puts "Else"
#         proxEstado = verificaExecucao(estadoAtual, x)
#         if proxEstado == nil do false end
#     end

#     #IO.puts "#{a} | #{b} | #{c}"
#     #trab(proxEstado, resto2)
#   end

#   def trab(estadoAtual, []) do
#     IO.puts "FIM"
#   end


#   def func(string) do
#     # Regex.split(~r/</, string, trim: true, include_captures: true)
#     # Regex.split(~r/(\[|<|>|\])/, string, trim: true, include_captures: false, capture: true)
#     # Regex.scan(~r/<.*>/, string)
#     #Regex.split(~r/(<=.*(>i)|\[=.*(\]i))/, string, trim: true, include_captures: true)
#     Regex.split(~r/<(.*)>/, "->(<aub>[aub]p, <a*,p?>q)", trim: true, include_captures: true)
#     String.splitter("->(<aub>[aub]p, <a*,p?>q)", "<.*>", trim: true, include_captures: true)
#   end

#   programa1 = "<a;b>[a*]P" # a -> b -> a*

#   estados1 = [{"a", nil, "<", nil}, {"a", nil, "<", nil}, {"a", nil, "[", "*"}]

#   def criaListaExecucao(estados, tupla) do
#     estados ++ [tupla]
#   end

#   grafo = [
#            {"x", "y", "a"},
#            {"x", "y", "b"},
#            {"x", "w", "a"},
#            {"w", "y", "b"},
#            {"w", "z", "b"},
#            {"z", "y", "a"},
#            {"z", "z", "b"},
#            {"z", "t", "b"},
#            {"t", "z", "b"}
#           ]
