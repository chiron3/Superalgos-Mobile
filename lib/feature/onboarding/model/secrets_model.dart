

import 'package:json_annotation/json_annotation.dart';

part 'secrets_model.g.dart';

@JsonSerializable()
class Secrets {
  Secrets({
    required this.secrets,
  });

  final List<Secret> secrets;

  factory Secrets.fromJson(Map<String, dynamic> json) =>
      _$SecretsFromJson(json);

  Map<String, dynamic> toJson() => _$SecretsToJson(this);
}

@JsonSerializable()
class Secret {
  Secret({
    required this.nodeId,
    required this.nodeName,
    required this.nodeType,
    required this.nodeCodeName,
    required this.signingAccountNodeId,
    required this.blockchainAccount,
    required this.privateKey,
    required this.userProfileHandle,
    required this.userProfileId,
  });

  final String nodeId;
  final String nodeName;
  final String nodeType;
  final String nodeCodeName;
  final String signingAccountNodeId;
  final String blockchainAccount;
  final String privateKey;
  final String userProfileHandle;
  final String userProfileId;

  factory Secret.fromJson(Map<String, dynamic> json) =>
      _$SecretFromJson(json);

  Map<String, dynamic> toJson() => _$SecretToJson(this);
}
