if not game:IsLoaded() then game.Loaded:Wait() end

getgenv().http = {}
getgenv().http.request = request
setreadonly(http, true)

getgenv().http_request = request

getgenv().base64 = {}
getgenv().crypt = {}
getgenv().crypt.base64 = {}

getgenv().crypt.base64encode = getgenv().base64encode
getgenv().crypt.base64.encode = getgenv().base64encode
getgenv().crypt.base64_encode = getgenv().base64encode
getgenv().base64.encode = getgenv().base64encode
getgenv().base64_encode = getgenv().base64encode

getgenv().crypt.base64decode = getgenv().base64decode
getgenv().crypt.base64.decode = getgenv().base64decode
getgenv().crypt.base64_decode = getgenv().base64decode
getgenv().base64.decode = getgenv().base64decode
getgenv().base64_decode = getgenv().base64decode

getgenv().crypt.encrypt = getgenv().encrypt
getgenv().crypt.decrypt = getgenv().decrypt

getgenv().crypt.generatebytes = getgenv().generatebytes

getgenv().crypt.generatekey = getgenv().generatekey
getgenv().crypt.hash = getgenv().hash

setreadonly(getgenv().base64, true)
setreadonly(getgenv().crypt, true)

getgenv().setthreadidentity = function(identity: number): ()
    kakaidentity(identity)
    task.wait()
end

getgenv().setidentity = getgenv().setthreadidentity
getgenv().setthreadcontext = getgenv().setthreadidentity

--[[
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
]]
