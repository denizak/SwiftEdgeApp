import Compute

@main
struct App {

    static func main() async throws {
//         try await onIncomingRequest(handler)
        let router = Router()

        router.get("/guess") { req, res in
            let number = Int(req.url.lastPathComponent) ?? 0
            let answer = (1...10).randomElement() ?? 0
            if number == answer {
                try await res.status(.ok).send("You guess the right number")
            } else {
                try await res.status(.ok).send("You guess \(number) but the answer is \(answer)")
            }
        }

        try await router.listen()
    }

    static func handler(
        req: IncomingRequest,
        res: OutgoingResponse
    ) async throws {
        try await res.status(.ok).send("Hello, Swift.")
    }
}
