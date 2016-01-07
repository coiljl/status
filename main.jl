@require "github.com/jkroso/parse-json" parse

const codes = Dict{ASCIIString,UInt16}()
const messages = Dict{UInt16,ASCIIString}()

open(joinpath(@dirname(), "deps/codes.json")) do io
  for (key, msg) in parse(io)
    code = Base.parse(Int, key)
    messages[code] = msg
    codes[msg] = code
  end
end

@test messages[404] == "Not Found"
@test codes["Not Found"] == 404
