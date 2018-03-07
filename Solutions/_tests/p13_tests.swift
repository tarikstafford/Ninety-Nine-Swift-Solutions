import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P13 (**) Run-length encoding of a list (direct solution).
    func testP13() {
        test(
            List("a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e").encodeDirect().description,
            equals: List((4, "a"), (1, "b"), (2, "c"), (2, "a"), (1, "d"), (4, "e")).description,
            "Letters"
        )
        test(
            List(1, 1, 2, 3, 5, 8).encodeDirect().description,
            equals: List((2, 1), (1, 2), (1, 3), (1, 5), (1, 8)).description,
            "Numbers"
        )
        test(List("a").encodeDirect().description, equals: List((1, "a")).description, "Single element")
    }

}
