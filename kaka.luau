getgenv().decompile = function(script)
    httpresponse = request({
      Url = "http://45.137.205.175:9002",
      Body = base64.encode(getscriptbytecode(script)),  -- The base64 encoded bytecode
      Method = "POST",
      Headers = {
          ["Content-Type"] = "text/plain"
      },
    })
    return httpresponse.Body
end

