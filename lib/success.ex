defmodule Success do
  @type truthy :: integer | String.t | atom
  
  @spec ful(truthy) :: boolean
  def ful(0) do
    false
  end

  def ful(:false) do
    false
  end

  def ful(:true) do
    :maybe
  end

  @spec ion([] | [number]) :: [number] 
  def ion([]) do
    [1]
  end

  def ion([item]) do
    [head | _] = item
    [head + 1 | item]
  end

  def ion([head | [next | _]] = items) when head > next do
    [head + 1 | items]
  end

  def ion([head | [next | _]] = items) when head < next do
    [head - 1 | items]
  end

  def ion([head | [next | _]] = items) when head == next do
    [head | items]
  end    

  @spec ive() :: any
  def ive() do
    ful([])
    ion([])

    ## These are all preventable runtime errors ##
    UUID.info!(:garbage)
    UUID.binary_to_string!([:garbage, [:can, :bag]])
    UUID.string_to_binary!({:garbage, :pile})
    UUID.uuid1(:garbage)
    UUID.uuid3(:tld, 1234567)
    UUID.uuid4(:dumpster, :fire)
    UUID.uuid5(:dns, 1234567, :garbage)
  end
  
end
