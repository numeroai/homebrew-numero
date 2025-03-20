class DynamodbLocal < Formula
  desc "Development tool for DynamoDB"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html"
  version "1.0.1"

  url "https://d1ni2b6xgvw0s0.cloudfront.net/v2.x/dynamodb_local_latest.tar.gz",
    verified: "d1ni2b6xgvw0s0.cloudfront.net/"

  sha256 "9805d95fe2f5efecfd7f7fec32af8efb32dc83b60a18a2fbd818614ed4b6c6ec"

  depends_on "openjdk" => ">= 11"

  def install
    libexec.install Dir["*"]
  end

  service do
    run ['java', "-Djava.library.path=#{libexec}/DynamoDBLocal_lib", "-jar", "#{libexec}/DynamoDBLocal.jar"]

    working_dir var
    log_path var/"log/dynamodb-local.log"
    error_log_path var/"log/dynamodb-local.log"
    keep_alive true
    run_type :immediate
  end
end
