pragma solidity ^0.8.20;

contract DecentralizedNotary {

    struct Document {
        address owner;
        uint256 timestamp;
        bool exists;
    }

    mapping(bytes32 => Document) private documents;

    event DocumentRegistered(
        bytes32 indexed documentHash,
        address indexed owner,
        uint256 timestamp
    );

    function registerDocument(bytes32 documentHash) public {
        require(
            documentHash != bytes32(0),
            "Invalid document hash"
        );

        require(
            !documents[documentHash].exists,
            "Document already registered"
        );

        documents[documentHash] = Document({
            owner: msg.sender,
            timestamp: block.timestamp,
            exists: true
        });

        emit DocumentRegistered(
            documentHash,
            msg.sender,
            block.timestamp
        );
    }

    function verifyDocument(bytes32 documentHash)
        public
        view
        returns (
            bool exists,
            address owner,
            uint256 timestamp
        )
    {
        Document memory doc = documents[documentHash];

        return (
            doc.exists,
            doc.owner,
            doc.timestamp
        );
    }
}
