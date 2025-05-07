// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MixedCaseTest {
    uint256 variableMixedCase;
    uint256 _variableMixedCase;
    uint256 variablemixedcase;

    uint256 Variablemixedcase; //~NOTE: mixed-case-variable
    uint256 VARIABLE_MIXED_CASE; //~NOTE: mixed-case-variable
    uint256 VariableMixedCase; //~NOTE: mixed-case-variable

    function foo() public {
        uint256 testVal;
        uint256 testVal123;

        uint256 testVAL; //~NOTE: mixed-case-variable
        uint256 TestVal; //~NOTE: mixed-case-variable
        uint256 TESTVAL; //~NOTE: mixed-case-variable
    }

    function functionMixedCase() public {}
    function _functionMixedCase() internal {}
    function functionmixedcase() public {}

    function Functionmixedcase() public {} //~NOTE: mixed-case-struct
    function FUNCTION_MIXED_CASE() public {} //~NOTE: mixed-case-struct
    function FunctionMixedCase() public {} //~NOTE: mixed-case-struct
}
