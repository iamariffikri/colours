import Vapor

extension Droplet {
    func setupRoutes() throws {
        get("colours") { req in
            var json = JSON()
            try json.set("colour", ["blue", "brown", "green"])
            return json
        }

        get("blue") { req in
            return "I'm Blue!"
        }

        get("brown") { req in
            return "I'm Brown!"
        }

        get("green") { req in
            return "I'm Green!"
        }

        // response to requests to /info domain
        // with a description of the request
        get("info") { req in
            return req.description
        }

        get("description") { req in return req.description }

        try resource("posts", PostController.self)
    }
}
