-- cabal install HTTP
import Network.HTTP

main = do
    let myRequest = getRequest "http://duckduckgo.com"
    simpleHTTP myRequest >>= getResponseBody
    print myRequest
