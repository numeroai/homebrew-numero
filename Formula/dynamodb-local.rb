# mytool.rb
class DynamoDBLocal < Formula
  name "Amazon DynamoDB Local"
  desc "Development tool for DynamoDB"
  homepage "https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html"

  url "https://d1ni2b6xgvw0s0.cloudfront.net/v2.x/dynamodb_local_latest.tar.gz",
    verified: "d1ni2b6xgvw0s0.cloudfront.net/"
  sha256 "f5296028d645bb2d3f99fede0a36945956eb7386174430e75c00e6fb1b34e78d"

  livecheck do
    skip "unversioned command-line application"
  end

  service do
    run ['java', "-Djava.library.path=#{opt_bin}/DynamoDBLocal_lib", "-jar", "'DynamoDBLocal.jar'"]

    working_dir var
    log_path var/"log/dynamodb-local.log"
    error_log_path var/"log/dynamodb-local.log"
  end

  caveats do
    depends_on_java "11+"
  end
end
