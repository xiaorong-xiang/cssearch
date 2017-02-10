package cssearch.web

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "search", action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
