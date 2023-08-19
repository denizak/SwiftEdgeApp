import Compute

@main
struct App {

    static func main() async throws {
        try await onIncomingRequest(handler)
    }

    static func handler(
        req: IncomingRequest,
        res: OutgoingResponse
    ) async throws {
        try await res.status(.ok).send("Hello, Swift.")
    }
}
