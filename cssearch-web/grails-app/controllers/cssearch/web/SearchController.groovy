package cssearch.web
import grails.converters.JSON
class SearchController {
    def concepts = ['gene', 'target', 'people'] // TOOD: this should be taking from ontology

    def index() {
        return [concepts: concepts]
    }

    def simpleQ() {
        def q = params.simpleq
        return []   // TODO: return a list of answers
    }

    def advancedQ() {
        println params
        def concept = params.concept
        def conceptv = params.conceptV
        //TODO: call ontology to get result based on each concept and conceptV
        def ret = []
        ret << [appName: "Table of Everything", appUrl: "http://toe.pfizer.com/toe/toe/?&viewname=default&queryBgg=JAK1&queryBy=1&r2=0.8"]
        ret << [appName: "litms", appUrl: "http://litms.pfizer.com/litms3/tsearch?corpus=2"]
        render (template: "result", model:["data":ret])
    }

    def addc() {
        println params
        render (template: "addc", model:["concepts":concepts])
    }

    def getConceptV() {
        println params
        def concept = params.q
        //TODO: call ontology to get a list of conceptV and find conceptV that matching q
        def results = [:]
        def ret = []
        ret << [title: 'GeneBookId:GB0001']
        ret << [title: 'Entrez:2001']
        results.put("results", ret)
        render results as JSON
    }

}
