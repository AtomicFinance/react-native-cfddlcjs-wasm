import { NativeModules } from 'react-native';
const { CfddlcjsWasm } = NativeModules;

export class Instance {
  constructor(id, keys) {
    const fns = keys.reduce((acc, k) => {
      acc[k] = (...args) =>
        CfddlcjsWasm.callCfddlc(id, k, JSON.stringify(args)).then((res) =>
          JSON.parse(res)
        );
      return acc;
    }, {});

    Object.assign(this, fns);
  }
}
