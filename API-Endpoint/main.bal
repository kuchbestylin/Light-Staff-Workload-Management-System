import ballerina/io;
import ballerina/http;

type staff record {|
    string fullName;
|};
public function main() {
    io:println("Hello, World!");
}

service /elearning on new http:Listener(8080) {
    resource function get staff/[int id] () returns json {
        if (id == 220130051){
            return {
                "message": "Authentication Successful For:\n Name=J. Muntuumo,\n Staff-ID=220130051",
                "status": 200
            };
        }
        return {
            "message":"ID not registered with NUST-Elearning platform",
            "status":404
        };
    }
}
