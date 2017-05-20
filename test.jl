@require "." messages codes

@test messages[404] == "Not Found"
@test codes["Not Found"] == 404
