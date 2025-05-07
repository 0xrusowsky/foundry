// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructPascalCaseTest {
    struct PascalCase {
        uint256 a;
    }

    struct PascalCAse {
        uint256 a;
    }

    struct _PascalCase { //~NOTE: struct-pascal-case
        uint256 a;
    }

    struct pascalCase { //~NOTE: struct-pascal-case
        uint256 a;
    }

    struct pascalcase { //~NOTE: struct-pascal-case
        uint256 a;
    }

    struct pascal_case { //~NOTE: struct-pascal-case
        uint256 a;
    }

    struct PASCAL_CASE { //~NOTE: struct-pascal-case
        uint256 a;
    }

    struct PASCALCASE { //~NOTE: struct-pascal-case
        uint256 a;
    }
}
