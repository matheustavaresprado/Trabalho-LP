defmodule Trablp do
  @moduledoc """
  Documentation for Trablp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Trablp.hello()
      :world
    arvoreGrafo = %{no: "x", filhos: [%{no: "y", filhos: []}, %{no: "z", filhos: []}]}
    arvoreProgramas = %{programa: "a", filhos: [%{programa: "b", filhos: []}, %{programa: "c", filhos: []}]}

  Copiar as 3 linhas abaixo no iex:

  arvoreGrafo = %{no: "x", aresta: "-", filhos: [%{no: "y", aresta: "a", filhos: []}, %{no: "z", aresta: "b", filhos: []}]}

  arvoreProgramas = %{programa: "a", tpExecucao: "[", filhos: [%{programa: "b", tpExecucao: "<", filhos: []}, %{programa: "c", tpExecucao: "<", filhos: []}]}
  
  percorredorDeArvores(arvoreGrafo,arvoreProgramas)


  """


  arvoreGrafo = %{no: "x", aresta: "-", filhos: [%{no: "y", aresta: "a", filhos: []}, %{no: "z", aresta: "b", filhos: []}]}

  arvoreProgramas = %{programa: "a", tpExecucao: "[", filhos: [%{programa: "b", tpExecucao: "<", filhos: []}, %{programa: "c", tpExecucao: "<", filhos: []}]}

  def percorredorDeArvores(%{no: no, aresta: aresta, filhos: filhos1}, %{programa: programa, tpExecucao: tpExecucao, filhos: filhos2}) do
    IO.puts "#{no} | #{programa} | #{aresta}"

    #processamento feito no nó

    if filhos1 != [] and filhos2 != [] do
      [proxNo | resto1] = filhos1
      [proxProg | resto2] = filhos2
      
      if proxNo.aresta == programa do
        percorredorDeArvores(proxNo, proxProg)
      end

      percorredorDeArvores(%{no: no, aresta: aresta, filhos: resto1}, %{programa: programa, tpExecucao: tpExecucao, filhos: filhos2})
      percorredorDeArvores(%{no: no, aresta: aresta, filhos: filhos1}, %{programa: programa, tpExecucao: tpExecucao, filhos: resto2})
    end
  end

  def percorredorDeArvores(%{no: no, filhos: []}, %{programa: programa, filhos: []}) do
    "Deu certo Fim"
  end

  

end

