@require "github.com/jkroso/parse-json.jl" => JSON

const codes = Dict{String,UInt16}()
const messages = Dict{UInt16,String}()

open(joinpath(@dirname(), "deps/codes.json")) do io
  for (key, msg) in JSON.parse(io)
    code = Base.parse(Int, key)
    messages[code] = msg
    codes[msg] = code
  end
end
