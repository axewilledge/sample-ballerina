import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Test2Componeent",
	id: "Test2Componeent-c10f7df4-b189-4af1-b66b-597da37b8f9d"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
