def validate_env(env):
    required_keys = ["CLOUD_PROVIDER", "REGION", "ENV"]
    missing = [k for k in required_keys if k not in env]
    if missing:
        return f"Missing keys: {missing}"
    return "Environment config valid"

if __name__ == "__main__":
    env = {
        "CLOUD_PROVIDER": "AWS",
        "REGION": "us-east-1",
        "ENV": "prod"
    }
    print(validate_env(env))

