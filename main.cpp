#include <iostream>
using namespace std;

int main() {
    // Output the required CGI headers
    cout << "Content-Type: text/html\r\n\r\n";
    cout << "<html><body><h1>Hello, CGI World!</h1></body></html>";
    return 0;
}
