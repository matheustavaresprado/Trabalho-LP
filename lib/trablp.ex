defmodule Trablp do
  @moduledoc """
  Documentation for Trablp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Trablp.hello()
      :world

  """
  arvoreGrafo1 = %{no: "x", aresta: "-", filhos: [%{no: "y", aresta: "a", filhos: []}, %{no: "z", aresta: "b", filhos: []}]}
  
  arvoreGrafo = %{no: "x", filhos: [%{no: "y", filhos: []}, %{no: "z", filhos: []}]}

  arvoreProgramas = %{programa: "a", filhos: [%{programa: "b", filhos: []}, %{programa: "a", filhos: []}]}

  def percorredorDeArvores(%{no: no, filhos: filhos1}, %{programa: programa, filhos: filhos2}) do
    IO.puts "#{no}"
    IO.puts "#{programa}"

    if filhos1 != [] and filhos2 != [] do
      [noAtual | resto1] = filhos1
      [progAtual | resto2] = filhos2
      percorredorDeArvores(noAtual, progAtual)
    end
  end

  def percorredorDeArvores(%{no: no, filhos: []}, %{programa: programa, filhos: []}) do
    "Deu certo Fim"
  end

  #percorredorDeArvores(arvoreGrafo,arvoreProgramas)

end

