/**
A sample test suite written for LibPQ
**/

[
    /** This is a unit test that will always pass**/
    testOne = Assert[True](1=1),

    /** This is another test, it will always fail **/
    testAnother = Assert[True](1=0),

    /** This test has an error in its code **/
    testWithError = () =>
        let
            Return = error "Check the code of this test"
        in
            Return,
    testWithError2 = Assert[Equal](1, error "hello"),

    /** Subtests - simple demonstration **/
    testSubtestDemoSuccess = {
        Assert[True](1=1),
        Assert[True](1=1),
        Assert[True](1=1),
        Assert[True](1=1)
    },
    testSubtestDemoFail = {
        Assert[True](1=1),
        Assert[True](1=1),
        Assert[True](1=0),
        Assert[True](1=1)
    },
    testSubtestDemoError = {
        Assert[True](1=1),
        Assert[True](1=1),
        Assert[True]("hello" & 1),
        Assert[True](1=1)
    },

    /**
    This is not a test. Unless it's referenced within a valid test, this
    code will never be executed
    **/
    notATest = (foo) => foo + 1,

    /**
    The value of this record will be used in tests, but it could have been
    defined in each one of them and not in the record itself
    **/
    Assert = LibPQ("UnitTest.Assert")
] meta [LibPQ.TestSuite = 1]
