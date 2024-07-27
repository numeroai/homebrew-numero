class DynamodbLocal < Formula
  desc "Development tool for DynamoDB"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html"
  version "1.0.1"

  url "https://d1ni2b6xgvw0s0.cloudfront.net/v2.x/dynamodb_local_latest.tar.gz",
    verified: "d1ni2b6xgvw0s0.cloudfront.net/"

  sha256 "f5296028d645bb2d3f99fede0a36945956eb7386174430e75c00e6fb1b34e78d"

  depends_on ["openjdk", ">= 11"]

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
