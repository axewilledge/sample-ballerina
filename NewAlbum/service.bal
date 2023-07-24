import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "NewAlbum",
    id: "NewAlbum-9039b0ea-7b49-4af9-a798-259479b31c92"
}
service / on new http:Listener(9090) {

    resource function get albums() returns error?|Album[] {
        return [
            {
                id: 1,
                name: "M&M"
            },
            {
                id: 2,
                name: "MJ"
            }
        ];
    }
}

type Album record {
    int id;
    string name;
};
