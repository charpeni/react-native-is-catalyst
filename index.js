import { NativeModules, Platform } from 'react-native';

const isCatalyst = Platform.OS === 'ios' ? NativeModules.IsCatalyst.isCatalyst : false;

export default isCatalyst;
