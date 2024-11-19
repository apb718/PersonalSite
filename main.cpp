#include <iostream>
#include <cstdlib>

int main() {
    std::cout << "Content-type: text/html\r\n\r\n";
    std::cout << "<html><body><h1>Hello from C++ CGI!</h1></body></html>";
        std::cout << "<h2>This is a change for testing</h2>";
    return 0;
}
