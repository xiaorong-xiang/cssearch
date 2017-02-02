package cssearch.web

class SearchController {

    def index() {
        def concepts = ['gene', 'target', 'people']  // TOOD: this should be taking from ontology
        return [concepts: concepts]
    }

    def simpleQ() {
        def q = params.simpleq
        return []   // TODO: return a list of answers
    }

    def advancedQ() {
     //   def q = params.simpleq  // TODO: retrieve a list of values
        return []   // TODO: return a list of answers
    }
}
